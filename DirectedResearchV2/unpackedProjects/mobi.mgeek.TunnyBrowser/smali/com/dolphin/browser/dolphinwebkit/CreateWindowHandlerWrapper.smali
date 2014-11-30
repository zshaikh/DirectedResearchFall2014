.class Lcom/dolphin/browser/dolphinwebkit/CreateWindowHandlerWrapper;
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
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/dolphin/browser/dolphinwebkit/CreateWindowHandlerWrapper;->mMessage:Landroid/os/Message;

    .line 33
    return-void
.end method


# virtual methods
.method public getInitializedTab()Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public sendToTarget()V
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/CreateWindowHandlerWrapper;->mMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getWhen()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/CreateWindowHandlerWrapper;->mMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 40
    :cond_0
    return-void
.end method

.method public setTab(Lcom/dolphin/browser/core/ITab;)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/CreateWindowHandlerWrapper;->mMessage:Landroid/os/Message;

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/WebView$WebViewTransport;

    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getWebView()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldolphin/webkit/WebView;

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebView$WebViewTransport;->setWebView(Ldolphin/webkit/WebView;)V

    .line 51
    return-void
.end method
