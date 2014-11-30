.class Lcom/dolphin/browser/androidwebkit/ac;
.super Ljava/lang/Object;
.source "MyWebViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View$OnCreateContextMenuListener;

.field final synthetic b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0

    .prologue
    .line 1429
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/ac;->b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    iput-object p2, p0, Lcom/dolphin/browser/androidwebkit/ac;->a:Landroid/view/View$OnCreateContextMenuListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/ac;->b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    # getter for: Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->mWebView:Lcom/dolphin/browser/androidwebkit/MyWebView;
    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->access$100(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)Lcom/dolphin/browser/androidwebkit/MyWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/ac;->a:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1433
    return-void
.end method
