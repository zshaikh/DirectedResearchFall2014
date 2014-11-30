.class public Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity;
.super Landroid/app/Activity;
.source "PaypalSlotomaniaActivity.java"


# static fields
.field public static final RESULT_FAILURE:I = -0xd

.field public static _transactionToken:Ljava/lang/Object;


# instance fields
.field private _webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private launchWeb()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ljava/lang/String;

    const-string v1, "https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_express-checkout-mobile"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "buf":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity;->_transactionToken:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&useraction=commit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity;->_webView:Landroid/webkit/WebView;

    .line 50
    iget-object v1, p0, Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity;->_webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 51
    iget-object v1, p0, Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity;->_webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity;->setContentView(Landroid/view/View;)V

    .line 54
    iget-object v1, p0, Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity;->_webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity$1;

    invoke-direct {v2, p0}, Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity$1;-><init>(Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 79
    iget-object v1, p0, Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity;->_webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity;->_webView:Landroid/webkit/WebView;

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->requestFocus(I)Z

    .line 86
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 30
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "transaction_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "transaction_id":Ljava/lang/String;
    sput-object v1, Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity;->_transactionToken:Ljava/lang/Object;

    .line 34
    invoke-direct {p0}, Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity;->launchWeb()V

    .line 35
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 91
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity;->_webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity;->_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity;->_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 104
    :goto_0
    const/4 v0, 0x1

    .line 107
    :goto_1
    return v0

    .line 100
    :cond_0
    invoke-static {}, Lcom/playtika/extensions/paypal/PaypalExtensionContext;->getInstance()Lcom/playtika/extensions/paypal/PaypalExtensionContext;

    move-result-object v0

    .line 101
    const/4 v1, 0x0

    .line 100
    invoke-virtual {v0, v2, v2, v1}, Lcom/playtika/extensions/paypal/PaypalExtensionContext;->paypalResponseCallback(IILandroid/content/Intent;)V

    .line 102
    invoke-virtual {p0}, Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity;->finish()V

    goto :goto_0

    .line 107
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method
