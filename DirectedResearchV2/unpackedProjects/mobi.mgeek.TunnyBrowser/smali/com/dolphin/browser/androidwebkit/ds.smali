.class Lcom/dolphin/browser/androidwebkit/ds;
.super Ljava/lang/Object;
.source "MyWebViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;I)V
    .locals 0

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/ds;->b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    iput p2, p0, Lcom/dolphin/browser/androidwebkit/ds;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/ds;->b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    # getter for: Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->mWebView:Lcom/dolphin/browser/androidwebkit/MyWebView;
    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->access$100(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)Lcom/dolphin/browser/androidwebkit/MyWebView;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/androidwebkit/ds;->a:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->setBackgroundColor(I)V

    .line 1102
    return-void
.end method