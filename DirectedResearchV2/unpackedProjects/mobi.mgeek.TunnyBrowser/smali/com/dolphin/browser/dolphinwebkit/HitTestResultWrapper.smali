.class Lcom/dolphin/browser/dolphinwebkit/HitTestResultWrapper;
.super Lcom/dolphin/browser/core/IWebView$HitTestResult;
.source "HitTestResultWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/dolphin/browser/core/IWebView$HitTestResult;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ldolphin/webkit/WebView$HitTestResult;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/dolphin/browser/core/IWebView$HitTestResult;-><init>()V

    .line 38
    invoke-virtual {p1}, Ldolphin/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/dolphinwebkit/HitTestResultWrapper;->setType(I)V

    .line 39
    invoke-virtual {p1}, Ldolphin/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/dolphinwebkit/HitTestResultWrapper;->setExtra(Ljava/lang/String;)V

    .line 40
    return-void
.end method
