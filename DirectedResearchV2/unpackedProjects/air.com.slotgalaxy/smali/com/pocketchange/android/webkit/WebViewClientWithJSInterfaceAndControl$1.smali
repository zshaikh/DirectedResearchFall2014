.class Lcom/pocketchange/android/webkit/WebViewClientWithJSInterfaceAndControl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/webkit/WebViewClientWithJSInterfaceAndControl;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/webkit/WebView;

.field final synthetic c:Lcom/pocketchange/android/webkit/WebViewClientWithJSInterfaceAndControl;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/webkit/WebViewClientWithJSInterfaceAndControl;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterfaceAndControl$1;->c:Lcom/pocketchange/android/webkit/WebViewClientWithJSInterfaceAndControl;

    iput-object p2, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterfaceAndControl$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterfaceAndControl$1;->b:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterfaceAndControl$1;->c:Lcom/pocketchange/android/webkit/WebViewClientWithJSInterfaceAndControl;

    iget-boolean v0, v0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterfaceAndControl;->debug:Z

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "WebViewClientWithJSInterfaceAndControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterfaceAndControl$1;->c:Lcom/pocketchange/android/webkit/WebViewClientWithJSInterfaceAndControl;

    iget-object v2, v2, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterfaceAndControl;->logMsgPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Executing JS control ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterfaceAndControl$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterfaceAndControl$1;->b:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterfaceAndControl$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 37
    return-void
.end method
