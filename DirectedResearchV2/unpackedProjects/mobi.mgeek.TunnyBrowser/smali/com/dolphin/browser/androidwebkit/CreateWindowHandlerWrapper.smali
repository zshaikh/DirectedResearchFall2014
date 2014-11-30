.class Lcom/dolphin/browser/androidwebkit/CreateWindowHandlerWrapper;
.super Ljava/lang/Object;
.source "CreateWindowHandlerWrapper.java"

# interfaces
.implements Lcom/dolphin/browser/core/IWebView$CreateWindowHandler;


# instance fields
.field private mMessage:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/CreateWindowHandlerWrapper;->mMessage:Landroid/os/Message;

    .line 34
    return-void
.end method


# virtual methods
.method public getInitializedTab()Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public sendToTarget()V
    .locals 4

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/CreateWindowHandlerWrapper;->mMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getWhen()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/CreateWindowHandlerWrapper;->mMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 41
    :cond_0
    return-void
.end method

.method public setTab(Lcom/dolphin/browser/core/ITab;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/CreateWindowHandlerWrapper;->mMessage:Landroid/os/Message;

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebView$WebViewTransport;

    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getWebView()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 52
    return-void
.end method
