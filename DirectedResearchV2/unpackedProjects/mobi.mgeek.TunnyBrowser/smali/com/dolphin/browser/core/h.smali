.class Lcom/dolphin/browser/core/h;
.super Lcom/dolphin/browser/core/WebViewTab;
.source "GameTab.java"


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/core/TabManager;)V
    .locals 2

    .prologue
    .line 32
    const/16 v0, 0xa

    invoke-static {p1}, Lcom/dolphin/browser/core/h;->a(Lcom/dolphin/browser/core/TabManager;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/dolphin/browser/core/h;-><init>(Lcom/dolphin/browser/core/TabManager;ILcom/dolphin/browser/core/IWebView;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/dolphin/browser/core/TabManager;ILcom/dolphin/browser/core/IWebView;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/core/WebViewTab;-><init>(Lcom/dolphin/browser/core/TabManager;ILcom/dolphin/browser/core/IWebView;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/dolphin/browser/core/TabManager;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/core/WebViewTab;-><init>(Lcom/dolphin/browser/core/TabManager;Landroid/os/Bundle;)V

    .line 52
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/h;->d(I)V

    .line 53
    return-void
.end method

.method private static a(Lcom/dolphin/browser/core/TabManager;)Lcom/dolphin/browser/core/IWebView;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/core/WebViewFactory;->newWebView(Landroid/content/Context;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()Lcom/dolphin/browser/core/IWebView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/core/h;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-static {v0}, Lcom/dolphin/browser/core/h;->a(Lcom/dolphin/browser/core/TabManager;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    return-object v0
.end method
