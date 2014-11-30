.class Lcom/dolphin/browser/core/bg;
.super Lcom/dolphin/browser/core/WebViewTab;
.source "ViewTab.java"


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/core/TabManager;ILandroid/view/View;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/browser/core/WebViewTab;-><init>(Lcom/dolphin/browser/core/TabManager;ILcom/dolphin/browser/core/IWebView;)V

    .line 34
    new-instance v0, Lcom/dolphin/browser/core/bl;

    invoke-direct {v0, p3, p4, p0}, Lcom/dolphin/browser/core/bl;-><init>(Landroid/view/View;Ljava/lang/String;Lcom/dolphin/browser/core/an;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/bg;->a(Lcom/dolphin/browser/core/IWebView;)V

    .line 35
    return-void
.end method


# virtual methods
.method public canUndo()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public getLockIconType()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method
