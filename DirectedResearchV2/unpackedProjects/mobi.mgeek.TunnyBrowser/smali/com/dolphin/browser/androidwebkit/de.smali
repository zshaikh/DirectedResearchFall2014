.class Lcom/dolphin/browser/androidwebkit/de;
.super Ljava/lang/Object;
.source "MyWebViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 958
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/de;->b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    iput-object p2, p0, Lcom/dolphin/browser/androidwebkit/de;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 961
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/de;->b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    # getter for: Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->mWebView:Lcom/dolphin/browser/androidwebkit/MyWebView;
    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->access$100(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)Lcom/dolphin/browser/androidwebkit/MyWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/de;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 962
    return-void
.end method
