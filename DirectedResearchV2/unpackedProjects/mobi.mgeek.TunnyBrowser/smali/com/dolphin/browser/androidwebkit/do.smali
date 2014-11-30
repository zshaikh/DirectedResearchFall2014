.class Lcom/dolphin/browser/androidwebkit/do;
.super Ljava/lang/Object;
.source "MyWebViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;II)V
    .locals 0

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/do;->c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    iput p2, p0, Lcom/dolphin/browser/androidwebkit/do;->a:I

    iput p3, p0, Lcom/dolphin/browser/androidwebkit/do;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/do;->c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    # getter for: Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->mWebView:Lcom/dolphin/browser/androidwebkit/MyWebView;
    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->access$100(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)Lcom/dolphin/browser/androidwebkit/MyWebView;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/androidwebkit/do;->a:I

    iget v2, p0, Lcom/dolphin/browser/androidwebkit/do;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/androidwebkit/MyWebView;->flingScroll(II)V

    .line 1059
    return-void
.end method
