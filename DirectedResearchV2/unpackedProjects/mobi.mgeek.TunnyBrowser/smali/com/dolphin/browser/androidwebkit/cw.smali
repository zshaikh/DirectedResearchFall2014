.class Lcom/dolphin/browser/androidwebkit/cw;
.super Ljava/lang/Object;
.source "MyWebViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Z)V
    .locals 0

    .prologue
    .line 873
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/cw;->b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    iput-boolean p2, p0, Lcom/dolphin/browser/androidwebkit/cw;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 876
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/cw;->b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    # getter for: Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->mWebView:Lcom/dolphin/browser/androidwebkit/MyWebView;
    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->access$100(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)Lcom/dolphin/browser/androidwebkit/MyWebView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dolphin/browser/androidwebkit/cw;->a:Z

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->findNext(Z)V

    .line 877
    return-void
.end method
