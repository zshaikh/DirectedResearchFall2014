.class Lcom/dolphin/browser/androidwebkit/ao;
.super Ljava/lang/Object;
.source "MyWebViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1548
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/ao;->f:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    iput-object p2, p0, Lcom/dolphin/browser/androidwebkit/ao;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolphin/browser/androidwebkit/ao;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/dolphin/browser/androidwebkit/ao;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/dolphin/browser/androidwebkit/ao;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/dolphin/browser/androidwebkit/ao;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/ao;->f:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    # getter for: Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->mWebView:Lcom/dolphin/browser/androidwebkit/MyWebView;
    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->access$100(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)Lcom/dolphin/browser/androidwebkit/MyWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/ao;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/ao;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/dolphin/browser/androidwebkit/ao;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/dolphin/browser/androidwebkit/ao;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/dolphin/browser/androidwebkit/ao;->e:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/androidwebkit/MyWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    return-void
.end method
