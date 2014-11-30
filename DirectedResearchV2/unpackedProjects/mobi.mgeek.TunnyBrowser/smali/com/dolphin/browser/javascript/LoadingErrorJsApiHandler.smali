.class public final Lcom/dolphin/browser/javascript/LoadingErrorJsApiHandler;
.super Lcom/dolphin/browser/javascript/DolphinWebAppHandler;
.source "LoadingErrorJsApiHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/dolphin/browser/javascript/DolphinWebAppHandler;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public NetDignostic()V
    .locals 2
    .annotation runtime Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;
        a = "NetDignostic"
        b = {}
        e = 0x2
    .end annotation

    .prologue
    .line 27
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/javascript/l;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/javascript/l;-><init>(Lcom/dolphin/browser/javascript/LoadingErrorJsApiHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    return-void
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "ErrorJsExt"

    return-object v0
.end method

.method public gettitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;
        a = "gettitle"
        b = {}
        e = 0x2
    .end annotation

    .prologue
    .line 55
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public geturl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;
        a = "geturl"
        b = {}
        e = 0x2
    .end annotation

    .prologue
    .line 49
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public refresh()V
    .locals 2
    .annotation runtime Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;
        a = "refresh"
        b = {}
        e = 0x2
    .end annotation

    .prologue
    .line 41
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 42
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/ITab;->setLoadingReceivedErrorState(Z)V

    .line 43
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->reload()V

    .line 44
    return-void
.end method
