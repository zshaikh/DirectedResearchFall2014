.class Lcom/dolphin/browser/androidwebkit/bi;
.super Ljava/lang/Object;
.source "MyWebViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[B

.field final synthetic c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/bi;->c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    iput-object p2, p0, Lcom/dolphin/browser/androidwebkit/bi;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolphin/browser/androidwebkit/bi;->b:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 481
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/bi;->c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    # getter for: Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->mWebView:Lcom/dolphin/browser/androidwebkit/MyWebView;
    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->access$100(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)Lcom/dolphin/browser/androidwebkit/MyWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/bi;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/bi;->b:[B

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/androidwebkit/MyWebView;->postUrl(Ljava/lang/String;[B)V

    .line 482
    return-void
.end method
