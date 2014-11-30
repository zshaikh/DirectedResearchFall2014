.class Lcom/nativex/monetization/mraid/MRAIDWebView$MRAIDWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "MRAIDWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/mraid/MRAIDWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MRAIDWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;


# direct methods
.method private constructor <init>(Lcom/nativex/monetization/mraid/MRAIDWebView;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDWebView$MRAIDWebChromeClient;->this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nativex/monetization/mraid/MRAIDWebView;Lcom/nativex/monetization/mraid/MRAIDWebView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nativex/monetization/mraid/MRAIDWebView;
    .param p2, "x1"    # Lcom/nativex/monetization/mraid/MRAIDWebView$1;

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDWebView$MRAIDWebChromeClient;-><init>(Lcom/nativex/monetization/mraid/MRAIDWebView;)V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 2
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V

    .line 272
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dialog"    # Z
    .param p3, "userGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;

    .prologue
    .line 219
    const-string v0, "WebView is creating a new window"

    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 220
    if-eqz p2, :cond_0

    .line 221
    const-string v0, "Window is dialog"

    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 222
    const/4 v0, 0x1

    .line 224
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView$MRAIDWebChromeClient;->this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;

    # getter for: Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->access$200(Lcom/nativex/monetization/mraid/MRAIDWebView;)Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v0

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;->ALERT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->showJSDialog(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;)V

    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView$MRAIDWebChromeClient;->this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;

    # getter for: Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->access$200(Lcom/nativex/monetization/mraid/MRAIDWebView;)Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v0

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;->BEFORE_UNLOAD:Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->showJSDialog(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;)V

    .line 244
    const/4 v0, 0x1

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView$MRAIDWebChromeClient;->this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;

    # getter for: Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->access$200(Lcom/nativex/monetization/mraid/MRAIDWebView;)Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v0

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;->CONFIRM:Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->showJSDialog(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;)V

    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView$MRAIDWebChromeClient;->this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;

    # getter for: Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->access$200(Lcom/nativex/monetization/mraid/MRAIDWebView;)Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v0

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;->PROMPT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

    invoke-virtual {v0, p2, p3, p5, v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->showJSDialog(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;)V

    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "requestedOrientation"    # I
    .param p3, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 210
    invoke-virtual {p0, p1, p3}, Lcom/nativex/monetization/mraid/MRAIDWebView$MRAIDWebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 211
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebView is showing custom view - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 202
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 203
    return-void
.end method
