.class Lcom/pocketchange/android/webkit/JSWebView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/webkit/JSWebView;->onInitialized()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pocketchange/android/webkit/JSWebView;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/webkit/JSWebView;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/pocketchange/android/webkit/JSWebView$1;->a:Lcom/pocketchange/android/webkit/JSWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/pocketchange/android/webkit/JSWebView$1;->a:Lcom/pocketchange/android/webkit/JSWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/webkit/JSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 65
    iget-object v0, p0, Lcom/pocketchange/android/webkit/JSWebView$1;->a:Lcom/pocketchange/android/webkit/JSWebView;

    invoke-static {v0}, Lcom/pocketchange/android/webkit/JSWebView;->a(Lcom/pocketchange/android/webkit/JSWebView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/pocketchange/android/webkit/JSWebView$1;->a:Lcom/pocketchange/android/webkit/JSWebView;

    invoke-static {v0}, Lcom/pocketchange/android/webkit/JSWebView;->a(Lcom/pocketchange/android/webkit/JSWebView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 68
    :cond_0
    return-void
.end method
