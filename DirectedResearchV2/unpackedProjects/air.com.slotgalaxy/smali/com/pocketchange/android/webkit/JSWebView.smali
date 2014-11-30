.class public Lcom/pocketchange/android/webkit/JSWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pocketchange/android/webkit/JSWebView$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Landroid/os/Handler;

.field private c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/pocketchange/android/webkit/JSWebView;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pocketchange/android/webkit/JSWebView;->b:Landroid/os/Handler;

    .line 33
    invoke-virtual {p0}, Lcom/pocketchange/android/webkit/JSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/pocketchange/android/webkit/JSWebView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/pocketchange/android/webkit/JSWebView;->c:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static buildInvokerForFunctionWithArguments(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "function"    # Ljava/lang/String;
    .param p1, "arguments"    # [Ljava/lang/String;

    .prologue
    .line 85
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, ","

    invoke-static {v0, v1}, Lcom/pocketchange/android/util/CollectionUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 87
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v2, ")("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static executeStatementWithErrorLogging(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "view"    # Landroid/webkit/WebView;
    .param p1, "statement"    # Ljava/lang/String;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript: (function() {  try {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  } catch(e) {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    if (console)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "      console.error("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " + \'\\n\' + e);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "})();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 82
    return-void
.end method


# virtual methods
.method public getSupportsJNI()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/pocketchange/android/webkit/JSWebView;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 5

    .prologue
    .line 37
    new-instance v0, Lcom/pocketchange/android/webkit/JSWebView$a;

    invoke-direct {v0, p0}, Lcom/pocketchange/android/webkit/JSWebView$a;-><init>(Lcom/pocketchange/android/webkit/JSWebView;)V

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pc_js_detector_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    const-string v2, "function(detector) {  if ((typeof navigator) === \'undefined\'      || (typeof navigator.javaEnabled) === \'undefined\'      || escape(navigator.javaEnabled.toString()) !== \'function%20javaEnabled%28%29%20%7B%20%5Bnative%20code%5D%20%7D\') {    window.location = \'native://setSupportsJNI?%5Bfalse%5D\';  } else {    detector.setSupportsJNI(true);  }}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/pocketchange/android/webkit/JSWebView;->buildInvokerForFunctionWithArguments(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    new-instance v3, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterfaceAndControl;

    invoke-direct {v3, v0, v2}, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterfaceAndControl;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/pocketchange/android/webkit/JSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 41
    invoke-virtual {p0, v0, v1}, Lcom/pocketchange/android/webkit/JSWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/webkit/JSWebView;->loadUrl(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method protected onInitialized()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pocketchange/android/webkit/JSWebView;->b:Landroid/os/Handler;

    new-instance v1, Lcom/pocketchange/android/webkit/JSWebView$1;

    invoke-direct {v1, p0}, Lcom/pocketchange/android/webkit/JSWebView$1;-><init>(Lcom/pocketchange/android/webkit/JSWebView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    return-void
.end method

.method public setInitializedCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/pocketchange/android/webkit/JSWebView;->c:Ljava/lang/Runnable;

    .line 59
    return-void
.end method

.method public setSupportsJNI(Z)V
    .locals 1
    .param p1, "supported"    # Z

    .prologue
    .line 53
    iget-object v0, p0, Lcom/pocketchange/android/webkit/JSWebView;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 54
    invoke-virtual {p0}, Lcom/pocketchange/android/webkit/JSWebView;->onInitialized()V

    .line 55
    return-void
.end method
