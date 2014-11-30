.class Lcom/dolphin/browser/androidwebkit/aj;
.super Ljava/lang/Object;
.source "MyWebViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/dolphin/browser/core/ValueCallback;

.field final synthetic d:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Ljava/lang/String;ZLcom/dolphin/browser/core/ValueCallback;)V
    .locals 0

    .prologue
    .line 1494
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/aj;->d:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    iput-object p2, p0, Lcom/dolphin/browser/androidwebkit/aj;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/dolphin/browser/androidwebkit/aj;->b:Z

    iput-object p4, p0, Lcom/dolphin/browser/androidwebkit/aj;->c:Lcom/dolphin/browser/core/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/aj;->d:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    # getter for: Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->mWebView:Lcom/dolphin/browser/androidwebkit/MyWebView;
    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->access$100(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)Lcom/dolphin/browser/androidwebkit/MyWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/aj;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/dolphin/browser/androidwebkit/aj;->b:Z

    iget-object v3, p0, Lcom/dolphin/browser/androidwebkit/aj;->c:Lcom/dolphin/browser/core/ValueCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Ljava/lang/String;ZLcom/dolphin/browser/core/ValueCallback;)V

    .line 1498
    return-void
.end method
