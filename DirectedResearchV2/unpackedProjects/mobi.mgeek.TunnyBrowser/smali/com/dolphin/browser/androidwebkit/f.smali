.class Lcom/dolphin/browser/androidwebkit/f;
.super Ljava/lang/Object;
.source "MyWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/androidwebkit/MyWebView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/androidwebkit/MyWebView;)V
    .locals 0

    .prologue
    .line 911
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/f;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 914
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/f;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 915
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    if-nez v0, :cond_1

    .line 917
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/f;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->g(Lcom/dolphin/browser/androidwebkit/MyWebView;)I

    move-result v0

    .line 918
    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/f;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->h(Lcom/dolphin/browser/androidwebkit/MyWebView;)I

    move-result v1

    .line 919
    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/f;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    iget-object v3, p0, Lcom/dolphin/browser/androidwebkit/f;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v3}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getScrollX()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/androidwebkit/MyWebView;->e(I)I

    move-result v2

    .line 920
    iget-object v3, p0, Lcom/dolphin/browser/androidwebkit/f;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    iget-object v4, p0, Lcom/dolphin/browser/androidwebkit/f;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v4}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getScrollY()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/androidwebkit/MyWebView;->f(I)I

    move-result v3

    .line 921
    iget-object v4, p0, Lcom/dolphin/browser/androidwebkit/f;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v4, v2, v3}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 923
    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/f;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v2}, Lcom/dolphin/browser/androidwebkit/MyWebView;->l(Lcom/dolphin/browser/androidwebkit/MyWebView;)Lcom/dolphin/browser/androidwebkit/m;

    move-result-object v2

    if-nez v2, :cond_0

    .line 924
    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/f;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    new-instance v3, Lcom/dolphin/browser/androidwebkit/m;

    iget-object v4, p0, Lcom/dolphin/browser/androidwebkit/f;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    iget-object v5, p0, Lcom/dolphin/browser/androidwebkit/f;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v5}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/dolphin/browser/androidwebkit/m;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebView;Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Lcom/dolphin/browser/androidwebkit/MyWebView;Lcom/dolphin/browser/androidwebkit/m;)Lcom/dolphin/browser/androidwebkit/m;

    .line 926
    :cond_0
    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/f;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v2}, Lcom/dolphin/browser/androidwebkit/MyWebView;->l(Lcom/dolphin/browser/androidwebkit/MyWebView;)Lcom/dolphin/browser/androidwebkit/m;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/dolphin/browser/androidwebkit/m;->a(II)V

    .line 929
    :cond_1
    return-void
.end method
