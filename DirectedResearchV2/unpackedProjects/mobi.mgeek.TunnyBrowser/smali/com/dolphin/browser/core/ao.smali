.class Lcom/dolphin/browser/core/ao;
.super Ljava/lang/Object;
.source "TabImpl.java"

# interfaces
.implements Lcom/dolphin/browser/core/IWebViewCallback;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/core/an;

.field private b:Z

.field private c:Lcom/dolphin/browser/core/ISslErrorHandler;

.field private d:Lcom/dolphin/browser/j/b/k;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/core/an;)V
    .locals 1

    .prologue
    .line 658
    iput-object p1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    new-instance v0, Lcom/dolphin/browser/core/ap;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/core/ap;-><init>(Lcom/dolphin/browser/core/ao;)V

    iput-object v0, p0, Lcom/dolphin/browser/core/ao;->c:Lcom/dolphin/browser/core/ISslErrorHandler;

    .line 696
    new-instance v0, Lcom/dolphin/browser/core/aq;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/core/aq;-><init>(Lcom/dolphin/browser/core/ao;)V

    iput-object v0, p0, Lcom/dolphin/browser/core/ao;->d:Lcom/dolphin/browser/j/b/k;

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/core/ao;)Lcom/dolphin/browser/core/ISslErrorHandler;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->c:Lcom/dolphin/browser/core/ISslErrorHandler;

    return-object v0
.end method

.method private a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 720
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 732
    :cond_0
    :goto_0
    return v0

    .line 725
    :cond_1
    iget-boolean v1, p0, Lcom/dolphin/browser/core/ao;->b:Z

    if-nez v1, :cond_0

    .line 728
    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->getWebSettings()Lcom/dolphin/browser/core/IWebSettings;

    move-result-object v1

    .line 729
    if-eqz v1, :cond_0

    .line 732
    invoke-interface {v1}, Lcom/dolphin/browser/core/IWebSettings;->isServerCertificateRevocationCheckEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/core/ao;Z)Z
    .locals 0

    .prologue
    .line 658
    iput-boolean p1, p0, Lcom/dolphin/browser/core/ao;->b:Z

    return p1
.end method

.method private b(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 738
    invoke-static {}, Lcom/dolphin/browser/j/b/h;->a()Lcom/dolphin/browser/j/b/h;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->d:Lcom/dolphin/browser/j/b/k;

    invoke-virtual {v0, p2, v1}, Lcom/dolphin/browser/j/b/h;->a(Ljava/lang/String;Lcom/dolphin/browser/j/b/k;)V

    .line 739
    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 777
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/dolphin/browser/core/IWebViewCallback;->doUpdateVisitedHistory(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Z)V

    .line 778
    return-void
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebViewCallback;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebViewCallback;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getVisitedHistory(Lcom/dolphin/browser/core/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/core/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 928
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebViewCallback;->getVisitedHistory(Lcom/dolphin/browser/core/ValueCallback;)V

    .line 929
    return-void
.end method

.method public interceptUrl(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->interceptUrl(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCheckFullScreenStatus(Lcom/dolphin/browser/core/IWebView;)Z
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebViewCallback;->onCheckFullScreenStatus(Lcom/dolphin/browser/core/IWebView;)Z

    move-result v0

    return v0
.end method

.method public onCloseWindow(Lcom/dolphin/browser/core/IWebView;)V
    .locals 2

    .prologue
    .line 858
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebViewCallback;->onCloseWindow(Lcom/dolphin/browser/core/IWebView;)V

    .line 859
    return-void
.end method

.method public onConsoleMessage(Lcom/dolphin/browser/core/ConsoleMessage;)Z
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebViewCallback;->onConsoleMessage(Lcom/dolphin/browser/core/ConsoleMessage;)Z

    move-result v0

    return v0
.end method

.method public onCreateWindow(Lcom/dolphin/browser/core/IWebView;ZZLcom/dolphin/browser/core/IWebView$CreateWindowHandler;)Z
    .locals 2

    .prologue
    .line 848
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/dolphin/browser/core/IWebViewCallback;->onCreateWindow(Lcom/dolphin/browser/core/IWebView;ZZLcom/dolphin/browser/core/IWebView$CreateWindowHandler;)Z

    move-result v0

    return v0
.end method

.method public onDocumentFinished(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 985
    return-void
.end method

.method public onDownloadStart(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    .prologue
    .line 944
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-interface/range {v0 .. v7}, Lcom/dolphin/browser/core/IWebViewCallback;->onDownloadStart(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 946
    return-void
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLcom/dolphin/browser/core/IWebStorage$QuotaUpdater;)V
    .locals 10

    .prologue
    .line 886
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/dolphin/browser/core/IWebViewCallback;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLcom/dolphin/browser/core/IWebStorage$QuotaUpdater;)V

    .line 888
    return-void
.end method

.method public onFormResubmission(Lcom/dolphin/browser/core/IWebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 772
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/dolphin/browser/core/IWebViewCallback;->onFormResubmission(Lcom/dolphin/browser/core/IWebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 773
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt(Lcom/dolphin/browser/core/IWebView;)V
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebViewCallback;->onGeolocationPermissionsHidePrompt(Lcom/dolphin/browser/core/IWebView;)V

    .line 904
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Lcom/dolphin/browser/core/IGeolocationPermissions$Callback;)V
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/dolphin/browser/core/IWebViewCallback;->onGeolocationPermissionsShowPrompt(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Lcom/dolphin/browser/core/IGeolocationPermissions$Callback;)V

    .line 899
    return-void
.end method

.method public onHideCustomView(Lcom/dolphin/browser/core/IWebView;)V
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebViewCallback;->onHideCustomView(Lcom/dolphin/browser/core/IWebView;)V

    .line 843
    return-void
.end method

.method public onJsAlert(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z
    .locals 2

    .prologue
    .line 863
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/dolphin/browser/core/IWebViewCallback;->onJsAlert(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsBeforeUnload(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z
    .locals 2

    .prologue
    .line 879
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/dolphin/browser/core/IWebViewCallback;->onJsBeforeUnload(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsConfirm(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z
    .locals 2

    .prologue
    .line 868
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/dolphin/browser/core/IWebViewCallback;->onJsConfirm(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsPrompt(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsPromptResult;)Z
    .locals 6

    .prologue
    .line 874
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/dolphin/browser/core/IWebViewCallback;->onJsPrompt(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsPromptResult;)Z

    move-result v0

    return v0
.end method

.method public onJsTimeout()Z
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebViewCallback;->onJsTimeout()Z

    move-result v0

    return v0
.end method

.method public onLoadResource(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 759
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->onLoadResource(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dolphin/browser/core/an;->a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V

    .line 761
    return-void
.end method

.method public onPageFinished(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 743
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iput-boolean v2, v0, Lcom/dolphin/browser/core/an;->m:Z

    .line 744
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 745
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->getSecureStatus()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 746
    invoke-static {}, Lcom/dolphin/browser/j/b/g;->a()Lcom/dolphin/browser/j/b/g;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/j/b/g;->a(Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v0

    .line 747
    if-eqz v0, :cond_0

    .line 748
    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/core/an;->a(Landroid/net/http/SslError;)V

    .line 749
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/core/an;->c(I)V

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->onPageFinished(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V

    .line 754
    invoke-static {p1, p2}, Lcom/dolphin/browser/test/a;->a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V

    .line 755
    return-void
.end method

.method public onPageStarted(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dolphin/browser/core/an;->m:Z

    .line 670
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/core/ao;->a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/core/ao;->b(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V

    .line 675
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/core/ao;->b:Z

    .line 676
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/dolphin/browser/core/IWebViewCallback;->onPageStarted(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 677
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dolphin/browser/core/TabManager;->b(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)V

    .line 678
    return-void
.end method

.method public onProgressChanged(Lcom/dolphin/browser/core/IWebView;I)V
    .locals 2

    .prologue
    .line 812
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->onProgressChanged(Lcom/dolphin/browser/core/IWebView;I)V

    .line 813
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/ITab;I)V

    .line 814
    invoke-static {p1, p2}, Lcom/dolphin/browser/test/a;->a(Lcom/dolphin/browser/core/IWebView;I)V

    .line 815
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-static {v0, p2}, Lcom/dolphin/browser/core/an;->a(Lcom/dolphin/browser/core/an;I)I

    .line 816
    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLcom/dolphin/browser/core/IWebStorage$QuotaUpdater;)V
    .locals 6

    .prologue
    .line 893
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/dolphin/browser/core/IWebViewCallback;->onReachedMaxAppCacheSize(JJLcom/dolphin/browser/core/IWebStorage$QuotaUpdater;)V

    .line 894
    return-void
.end method

.method public onReceivedError(Lcom/dolphin/browser/core/IWebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 766
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/dolphin/browser/core/IWebViewCallback;->onReceivedError(Lcom/dolphin/browser/core/IWebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 768
    return-void
.end method

.method public onReceivedHttpAuthRequest(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 792
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/dolphin/browser/core/IWebViewCallback;->onReceivedHttpAuthRequest(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    return-void
.end method

.method public onReceivedIcon(Lcom/dolphin/browser/core/IWebView;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 826
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->onReceivedIcon(Lcom/dolphin/browser/core/IWebView;Landroid/graphics/Bitmap;)V

    .line 827
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/ITab;Landroid/graphics/Bitmap;)V

    .line 828
    return-void
.end method

.method public onReceivedSslError(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/ISslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    .prologue
    .line 782
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/an;

    .line 783
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/an;->c(I)V

    .line 784
    invoke-virtual {v0, p3}, Lcom/dolphin/browser/core/an;->a(Landroid/net/http/SslError;)V

    .line 785
    invoke-static {}, Lcom/dolphin/browser/j/b/g;->a()Lcom/dolphin/browser/j/b/g;

    move-result-object v0

    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/dolphin/browser/j/b/g;->a(Ljava/lang/String;Landroid/net/http/SslError;)V

    .line 786
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/dolphin/browser/core/IWebViewCallback;->onReceivedSslError(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/ISslErrorHandler;Landroid/net/http/SslError;)V

    .line 787
    return-void
.end method

.method public onReceivedTitle(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 820
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->onReceivedTitle(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V

    .line 821
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)V

    .line 822
    return-void
.end method

.method public onReceivedTouchIconUrl(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 832
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/dolphin/browser/core/IWebViewCallback;->onReceivedTouchIconUrl(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Z)V

    .line 833
    return-void
.end method

.method public onRequestFocus(Lcom/dolphin/browser/core/IWebView;)V
    .locals 2

    .prologue
    .line 853
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebViewCallback;->onRequestFocus(Lcom/dolphin/browser/core/IWebView;)V

    .line 854
    return-void
.end method

.method public onRequestUsernamePassword(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->onRequestUsernamePassword(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V

    .line 994
    return-void
.end method

.method public onSaveUsernamePassword(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->onSaveUsernamePassword(Ljava/lang/String;[Ljava/lang/String;)V

    .line 989
    return-void
.end method

.method public onScaleChanged(Lcom/dolphin/browser/core/IWebView;FF)V
    .locals 2

    .prologue
    .line 807
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/dolphin/browser/core/IWebViewCallback;->onScaleChanged(Lcom/dolphin/browser/core/IWebView;FF)V

    .line 808
    return-void
.end method

.method public onSelectionDone(Lcom/dolphin/browser/core/IWebView;)V
    .locals 2

    .prologue
    .line 938
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebViewCallback;->onSelectionDone(Lcom/dolphin/browser/core/IWebView;)V

    .line 939
    return-void
.end method

.method public onSelectionStart(Lcom/dolphin/browser/core/IWebView;)V
    .locals 2

    .prologue
    .line 933
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebViewCallback;->onSelectionStart(Lcom/dolphin/browser/core/IWebView;)V

    .line 934
    return-void
.end method

.method public onShowCustomView(Lcom/dolphin/browser/core/IWebView;Landroid/view/View;Lcom/dolphin/browser/core/IWebViewCallback$CustomViewCallback;)V
    .locals 2

    .prologue
    .line 837
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/dolphin/browser/core/IWebViewCallback;->onShowCustomView(Lcom/dolphin/browser/core/IWebView;Landroid/view/View;Lcom/dolphin/browser/core/IWebViewCallback$CustomViewCallback;)V

    .line 838
    return-void
.end method

.method public onUnhandledKeyEvent(Lcom/dolphin/browser/core/IWebView;Landroid/view/KeyEvent;)V
    .locals 2

    .prologue
    .line 802
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->onUnhandledKeyEvent(Lcom/dolphin/browser/core/IWebView;Landroid/view/KeyEvent;)V

    .line 803
    return-void
.end method

.method public openFileChooser(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/ValueCallback;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/core/IWebView;",
            "Lcom/dolphin/browser/core/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 955
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/dolphin/browser/core/IWebViewCallback;->openFileChooser(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/ValueCallback;Ljava/lang/String;)V

    .line 956
    return-void
.end method

.method public setFullScreen(Lcom/dolphin/browser/core/IWebView;Z)V
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->setFullScreen(Lcom/dolphin/browser/core/IWebView;Z)V

    .line 971
    return-void
.end method

.method public setInstallableWebApp()V
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebViewCallback;->setInstallableWebApp()V

    .line 966
    return-void
.end method

.method public setupAutoFill(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebViewCallback;->setupAutoFill(Landroid/os/Message;)V

    .line 961
    return-void
.end method

.method public shouldOverrideKeyEvent(Lcom/dolphin/browser/core/IWebView;Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 797
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->shouldOverrideKeyEvent(Lcom/dolphin/browser/core/IWebView;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public shouldOverrideUrlLoading(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->p()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->shouldOverrideUrlLoading(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
